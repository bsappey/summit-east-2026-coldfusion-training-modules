/**
 * ColdFusion Training - Quiz Page JavaScript
 * Modernized to ES6+ standards
 */

let quizStarted = false;
let currentQuestion = 0;
let userAnswers = {};
let quizData = null;

/** ?module=N query only: preserve N=0 (parseInt(x)||1 incorrectly turned 0 into 1). */
const parseModuleIdFromQuery = (searchParams) => {
    const raw = searchParams.get('module');
    if (raw === null || raw === '') {
        return null;
    }
    const n = parseInt(raw, 10);
    return Number.isNaN(n) ? null : n;
};

// Initialize quiz page
document.addEventListener('DOMContentLoaded', () => {
    // Extract module ID from URL path (e.g., /quizzes/quiz-1.cfm)
    let moduleId = 1;
    const pathMatch = window.location.pathname.match(/quiz-(\d+)\.cfm$/);
    if (pathMatch) {
        moduleId = parseInt(pathMatch[1], 10);
    } else {
        // Fallback to URL parameter for backward compatibility
        const mq = parseModuleIdFromQuery(new URLSearchParams(window.location.search));
        moduleId = mq === null ? 1 : mq;
    }
    
    loadQuiz(moduleId);
});

/**
 * Load quiz data
 */
const loadQuiz = (moduleId) => {
    if (typeof isModulePublic === 'function' && !isModulePublic(moduleId)) {
        window.location.replace('../404.cfm');
        return;
    }

    quizData = getQuizData(moduleId);
    
    if (!quizData) {
        const instructions = document.getElementById('quizInstructions');
        if (instructions) {
            instructions.innerHTML = `
                <div class="alert alert-warning mb-0" role="alert">
                    <h2 class="h5">Quiz not available</h2>
                    <p class="mb-2">No quiz has been defined for Module ${moduleId} yet. Use the link below to return to the module.</p>
                    <a class="btn btn-primary" href="../modules/module-${moduleId}.cfm">Back to Module ${moduleId}</a>
                </div>`;
        }
        return;
    }

    // Update page title
    const pageTitleEl = document.getElementById('pageTitle');
    if (pageTitleEl) pageTitleEl.textContent = `Quiz - Module ${moduleId} - ColdFusion Training`;
    
    const quizTitleEl = document.getElementById('quizTitle');
    if (quizTitleEl) quizTitleEl.textContent = `Module ${moduleId} Quiz`;
    
    // Update breadcrumb
    const moduleLink = document.getElementById('breadcrumbModuleLink');
    if (moduleLink) {
        moduleLink.href = `../modules/module-${moduleId}.cfm`;
        if (typeof getPublicModulesData === 'function' || typeof getModulesData === 'function') {
            const modules = typeof getPublicModulesData === 'function' ? getPublicModulesData() : getModulesData();
            const module = modules.find((m) => Number(m.id) === Number(moduleId));
            moduleLink.textContent = module ? `Module ${moduleId}: ${module.title}` : `Module ${moduleId}`;
        } else {
            console.error('getModulesData not found. modules-data.js may not be loaded.');
            moduleLink.textContent = `Module ${moduleId}`;
        }
    }
    
    // Update back to module buttons (there may be multiple)
    const backBtns = document.querySelectorAll('#backToModuleBtn, #backToModuleBtn2');
    backBtns.forEach(btn => {
        if (btn) {
            btn.href = `../modules/module-${moduleId}.cfm`;
        }
    });

    // Next module - ids 0–25 match catalog order and filenames
    const nextModuleBtn = document.getElementById('nextModuleBtn');
    const nextModuleBtnLabel = document.getElementById('nextModuleBtnLabel');
    if (nextModuleBtn) {
        const nextId = typeof getNextPublicModuleId === 'function'
            ? getNextPublicModuleId(moduleId)
            : null;
        if (nextId === null) {
            nextModuleBtn.style.display = 'none';
            nextModuleBtn.setAttribute('aria-hidden', 'true');
        } else {
            nextModuleBtn.href = `../modules/module-${nextId}.cfm`;
            nextModuleBtn.style.display = 'inline-block';
            nextModuleBtn.removeAttribute('aria-hidden');
            let label = `Next: Module ${nextId}`;
            if (typeof getPublicModulesData === 'function' || typeof getModulesData === 'function') {
                const modules = typeof getPublicModulesData === 'function' ? getPublicModulesData() : getModulesData();
                const nextMod = modules.find((m) => Number(m.id) === nextId);
                if (nextMod) {
                    label = `Next: ${nextMod.title}`;
                }
            }
            if (nextModuleBtnLabel) {
                nextModuleBtnLabel.textContent = label;
            } else {
                nextModuleBtn.textContent = label;
            }
        }
    }

    renderQuestions();
};

/**
 * Render quiz questions
 */
const renderQuestions = () => {
    const container = document.getElementById('questionsContainer');
    if (!container || !quizData) return;

    container.innerHTML = quizData.questions.map((question, index) => {
        let answersHtml = '';
        
        if (question.type === 'multiple') {
            // Multiple choice (checkboxes)
            answersHtml = question.answers.map((answer, aIndex) => {
                return `
                    <div class="form-check mb-3">
                        <input class="form-check-input" 
                               type="checkbox" 
                               name="question${index + 1}" 
                               id="q${index + 1}a${aIndex + 1}" 
                               value="${answer.value}">
                        <label class="form-check-label" for="q${index + 1}a${aIndex + 1}">
                            ${answer.text}
                        </label>
                    </div>
                `;
            }).join('');
        } else {
            // Single choice (radio buttons)
            answersHtml = question.answers.map((answer, aIndex) => {
                return `
                    <div class="form-check mb-3">
                        <input class="form-check-input" 
                               type="radio" 
                               name="question${index + 1}" 
                               id="q${index + 1}a${aIndex + 1}" 
                               value="${answer.value}">
                        <label class="form-check-label" for="q${index + 1}a${aIndex + 1}">
                            ${answer.text}
                        </label>
                    </div>
                `;
            }).join('');
        }

        return `
            <div class="card mb-4 quiz-question shadow-sm" data-question="${index + 1}">
                <div class="card-header">
                    <div class="d-flex justify-content-between align-items-center">
                        <h5 class="mb-0">
                            <span class="badge bg-primary me-2">${index + 1}</span>
                            ${question.question}
                        </h5>
                        <span class="badge bg-label-success" style="display: none;">
                            <i class="ti ti-check"></i> Correct
                        </span>
                        <span class="badge bg-label-danger" style="display: none;">
                            <i class="ti ti-x"></i> Incorrect
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    ${answersHtml}
                    ${question.explanation ? `
                        <div class="alert alert-info mt-3" style="display: none;" data-explanation="${index + 1}">
                            <strong>Explanation:</strong> ${question.explanation}
                        </div>
                    ` : ''}
                </div>
            </div>
        `;
    }).join('');

    // Add event listeners for answer changes
    document.querySelectorAll('input[type="radio"], input[type="checkbox"]').forEach(input => {
        input.addEventListener('change', () => {
            updateQuizProgress();
            const questionEl = input.closest('.quiz-question');
            if (questionEl) markQuestionAnswered(questionEl);
        });
    });
};

/**
 * Mark question as answered
 */
const markQuestionAnswered = (questionEl) => {
    questionEl.classList.add('answered');
};

/**
 * Start quiz
 */
const startQuiz = () => {
    quizStarted = true;
    document.getElementById('quizInstructions').style.display = 'none';
    document.getElementById('quizContainer').style.display = 'block';
    
    // Scroll to first question
    document.getElementById('quizContainer').scrollIntoView({ behavior: 'smooth' });
    
    updateQuizProgress();
};

/**
 * Update quiz progress
 */
const updateQuizProgress = () => {
    if (!quizData) return;
    
    const totalQuestions = quizData.questions.length;
    const answeredQuestions = document.querySelectorAll('.quiz-question.answered').length;
    const progress = Math.round((answeredQuestions / totalQuestions) * 100);
    
    const progressBar = document.getElementById('quizProgress');
    if (progressBar) {
        progressBar.style.width = progress + '%';
        progressBar.setAttribute('aria-valuenow', progress);
    }
};

/**
 * Submit quiz
 */
const submitQuiz = () => {
    if (!quizData) return;
    
    // Collect answers
    const answers = {};
    let allAnswered = true;
    
    quizData.questions.forEach((question, index) => {
        const questionNum = index + 1;
        const inputs = document.querySelectorAll(`input[name="question${questionNum}"]:checked`);
        
        if (inputs.length === 0) {
            allAnswered = false;
            return;
        }
        
        if (question.type === 'multiple') {
            answers[questionNum] = Array.from(inputs).map(input => input.value);
        } else {
            answers[questionNum] = inputs[0].value;
        }
    });
    
    if (!allAnswered) {
        if (confirm('You haven\'t answered all questions. Submit anyway?')) {
            gradeQuiz(answers);
        }
    } else {
        gradeQuiz(answers);
    }
};

/**
 * Grade quiz
 */
const gradeQuiz = (answers) => {
    if (!quizData) return;
    
    let correct = 0;
    const total = quizData.questions.length;
    
    quizData.questions.forEach((question, index) => {
        const questionNum = index + 1;
        const questionEl = document.querySelector(`.quiz-question[data-question="${questionNum}"]`);
        const userAnswer = answers[questionNum];
        const correctAnswer = question.correct;
        
        let isCorrect = false;
        
        if (question.type === 'multiple') {
            // For multiple choice, check if arrays match
            const userArray = Array.isArray(userAnswer) ? userAnswer.sort() : [userAnswer];
            const correctArray = Array.isArray(correctAnswer) ? correctAnswer.sort() : [correctAnswer];
            isCorrect = JSON.stringify(userArray) === JSON.stringify(correctArray);
        } else {
            isCorrect = userAnswer === correctAnswer;
        }
        
        if (isCorrect) {
            correct++;
            questionEl.classList.add('correct');
            questionEl.querySelector('.bg-label-success').style.display = 'inline-block';
        } else {
            questionEl.classList.add('incorrect');
            questionEl.querySelector('.bg-label-danger').style.display = 'inline-block';
        }
        
        // Show explanation
        const explanation = questionEl.querySelector('[data-explanation]');
        if (explanation) {
            explanation.style.display = 'block';
        }
        
        // Disable inputs
        questionEl.querySelectorAll('input').forEach(input => {
            input.disabled = true;
        });
    });
    
    const score = Math.round((correct / total) * 100);
    const passed = score >= 70;
    
    // Save results
    const pathMatch = window.location.pathname.match(/quiz-(\d+)\.cfm$/);
    let moduleId;
    if (pathMatch) {
        moduleId = parseInt(pathMatch[1], 10);
    } else {
        const mq = parseModuleIdFromQuery(new URLSearchParams(window.location.search));
        moduleId = mq === null ? 1 : mq;
    }
    
    AppState.quizResults[moduleId] = {
        score: score,
        correct: correct,
        total: total,
        passed: passed,
        date: new Date().toISOString()
    };
    saveProgress();
    
    // Report to SCORM if available
    if (typeof reportQuizToSCORM === 'function') {
        reportQuizToSCORM(moduleId, score, passed);
    }
    
    // Show results
    showResults(score, passed, correct, total);
};

/**
 * Show quiz results
 */
const showResults = (score, passed, correct, total) => {
    document.getElementById('quizContainer').style.display = 'none';
    document.getElementById('quizResults').style.display = 'block';
    
    const resultIcon = document.getElementById('resultIcon');
    const resultTitle = document.getElementById('resultTitle');
    const resultMessage = document.getElementById('resultMessage');
    const finalScore = document.getElementById('finalScore');
    
    if (passed) {
        resultIcon.className = 'avatar avatar-xl bg-label-success rounded-circle mb-3';
        resultIcon.innerHTML = '<i class="ti ti-check"></i>';
        resultTitle.textContent = 'Congratulations!';
        resultMessage.textContent = `You passed the quiz with a score of ${score}%!`;
    } else {
        resultIcon.className = 'avatar avatar-xl bg-label-danger rounded-circle mb-3';
        resultIcon.innerHTML = '<i class="ti ti-x"></i>';
        resultTitle.textContent = 'Keep Learning!';
        resultMessage.textContent = `You scored ${score}%. You need 70% to pass. Review the module and try again!`;
    }
    
    finalScore.textContent = score + '%';
    
    // Scroll to results
    document.getElementById('quizResults').scrollIntoView({ behavior: 'smooth' });
    
    // Show reset button
    const resetBtn = document.getElementById('resetBtn');
    if (resetBtn) resetBtn.style.display = 'inline-block';
};

/**
 * Reset quiz
 */
const resetQuiz = () => {
    // Reset state
    quizStarted = false;
    currentQuestion = 0;
    userAnswers = {};
    
    // Hide results
    document.getElementById('quizResults').style.display = 'none';
    
    // Reset form
    document.getElementById('quizForm').reset();
    
    // Remove classes
    document.querySelectorAll('.quiz-question').forEach(question => {
        question.classList.remove('answered', 'correct', 'incorrect');
        question.querySelectorAll('.badge').forEach(badge => {
            badge.style.display = 'none';
        });
        question.querySelectorAll('[data-explanation]').forEach(explanation => {
            explanation.style.display = 'none';
        });
        question.querySelectorAll('input').forEach(input => {
            input.disabled = false;
        });
    });
    
    // Show instructions
    document.getElementById('quizInstructions').style.display = 'block';
    document.getElementById('quizContainer').style.display = 'none';
    
    // Reset progress
    const progressBar = document.getElementById('quizProgress');
    if (progressBar) {
        progressBar.style.width = '0%';
    }
    
    // Scroll to top
    window.scrollTo({ top: 0, behavior: 'smooth' });
};

/**
 * Get quiz data
 */
const getQuizData = (moduleId) => {
    const quizzes = {
        3: {
            questions: [
                {
                    question: 'What file extension is used for ColdFusion pages?',
                    type: 'single',
                    answers: [
                        { text: '.cf', value: 'a' },
                        { text: '.cfm', value: 'b' },
                        { text: '.coldfusion', value: 'c' },
                        { text: '.html', value: 'd' }
                    ],
                    correct: 'b',
                    explanation: 'ColdFusion pages use the <code>.cfm</code> extension, which stands for ColdFusion Markup.'
                },
                {
                    question: 'Which tag is used to output content in ColdFusion?',
                    type: 'single',
                    answers: [
                        { text: '&lt;cfdisplay&gt;', value: 'a' },
                        { text: '&lt;cfoutput&gt;', value: 'b' },
                        { text: '&lt;cfshow&gt;', value: 'c' },
                        { text: '&lt;cfecho&gt;', value: 'd' }
                    ],
                    correct: 'b',
                    explanation: 'The <code>&lt;cfoutput&gt;</code> tag is used to output content and evaluate ColdFusion expressions.'
                },
                {
                    question: 'How do you set a variable in ColdFusion?',
                    type: 'single',
                    answers: [
                        { text: '&lt;cfvar name="variable" value="value"&gt;', value: 'a' },
                        { text: '&lt;cfset variable = "value"&gt;', value: 'b' },
                        { text: '&lt;cfvariable name="variable" value="value"&gt;', value: 'c' },
                        { text: 'variable = "value"', value: 'd' }
                    ],
                    correct: 'b',
                    explanation: 'The <code>&lt;cfset&gt;</code> tag is used to set variables in ColdFusion.'
                },
                {
                    question: 'Which of the following are ColdFusion data types? (Select all that apply)',
                    type: 'multiple',
                    answers: [
                        { text: 'String', value: 'string' },
                        { text: 'Numeric', value: 'numeric' },
                        { text: 'Boolean', value: 'boolean' },
                        { text: 'Array', value: 'array' }
                    ],
                    correct: ['string', 'numeric', 'boolean', 'array'],
                    explanation: 'All of these are valid ColdFusion data types. ColdFusion also supports structures, queries, dates, and more.'
                },
                {
                    question: 'What is the correct syntax to output a variable inside a cfoutput tag?',
                    type: 'single',
                    answers: [
                        { text: '&lt;cfoutput&gt;variable&lt;/cfoutput&gt;', value: 'a' },
                        { text: '&lt;cfoutput&gt;#variable#&lt;/cfoutput&gt;', value: 'b' },
                        { text: '&lt;cfoutput&gt;${variable}&lt;/cfoutput&gt;', value: 'c' },
                        { text: '&lt;cfoutput&gt;{variable}&lt;/cfoutput&gt;', value: 'd' }
                    ],
                    correct: 'b',
                    explanation: 'Variables are output using hash marks (#) around the variable name: <code>#variable#</code>'
                }
            ]
        },
        14: {
            questions: [
                {
                    question: 'Which function is used to create a chat model instance in ColdFusion 2025?',
                    type: 'single',
                    answers: [
                        { text: 'createChatModel()', value: 'a' },
                        { text: 'ChatModel()', value: 'b' },
                        { text: 'newChatModel()', value: 'c' },
                        { text: 'initChatModel()', value: 'd' }
                    ],
                    correct: 'b',
                    explanation: 'The <code>ChatModel()</code> function creates a configured chat LLM instance. It requires a configuration struct with PROVIDER, APIKEY, and MODELNAME.'
                },
                {
                    question: 'What is the correct way to send a prompt to a chat model?',
                    type: 'single',
                    answers: [
                        { text: 'chatModel.send("prompt")', value: 'a' },
                        { text: 'chatModel.chat("prompt")', value: 'b' },
                        { text: 'chatModel.query("prompt")', value: 'c' },
                        { text: 'chatModel.ask("prompt")', value: 'd' }
                    ],
                    correct: 'b',
                    explanation: 'The <code>.chat()</code> method is used to send prompts to a chat model. It accepts either a plain string or a structured chat request with systemMessage and userMessage.'
                },
                {
                    question: 'Which function turns a stateless chat model into a conversational AI service with memory?',
                    type: 'single',
                    answers: [
                        { text: 'Agent()', value: 'a' },
                        { text: 'createAIService()', value: 'b' },
                        { text: 'initAIService()', value: 'c' },
                        { text: 'newAIService()', value: 'd' }
                    ],
                    correct: 'a',
                    explanation: 'The <code>Agent()</code> function wraps a chat model and adds features like memory, persona management, and tool calling. It requires a chatModel in its configuration.'
                },
                {
                    question: 'What are the main features added by Agent()? (Select all that apply)',
                    type: 'multiple',
                    answers: [
                        { text: 'Multi-turn conversation management', value: 'multiturn' },
                        { text: 'Memory for previous messages', value: 'memory' },
                        { text: 'System personas', value: 'persona' },
                        { text: 'Function/tool calling', value: 'tools' }
                    ],
                    correct: ['multiturn', 'memory', 'persona', 'tools'],
                    explanation: 'Agent() adds memory (per-user or global), system personas (via systemMessage), and function/tool calling capabilities to enable the AI to call your CFC methods.'
                },
                {
                    question: 'What does RAG stand for in the context of AI workflows?',
                    type: 'single',
                    answers: [
                        { text: 'Retrieval Augmented Generation', value: 'a' },
                        { text: 'Response Augmented Generation', value: 'b' },
                        { text: 'Retrieval Automated Generation', value: 'c' },
                        { text: 'Response Automated Generation', value: 'd' }
                    ],
                    correct: 'a',
                    explanation: 'RAG stands for Retrieval Augmented Generation - retrieval from your content plus model generation (covered in depth in later modules).'
                },
                {
                    question: 'Vendor-neutral AI configuration in ColdFusion means you can:',
                    type: 'single',
                    answers: [
                        { text: 'Change provider or model via configuration without rewriting core application logic', value: 'a' },
                        { text: 'Only use one provider forever with no config changes', value: 'b' },
                        { text: 'Remove all security controls', value: 'c' },
                        { text: 'Avoid installing any CF packages', value: 'd' }
                    ],
                    correct: 'a',
                    explanation: 'The same CFML patterns apply; you update configuration (provider, modelName, keys, endpoints) rather than rewriting integration code for each vendor.'
                },
                {
                    question: 'Which ColdFusion version is required for AI features?',
                    type: 'single',
                    answers: [
                        { text: 'ColdFusion 2021', value: 'a' },
                        { text: 'ColdFusion 2023', value: 'b' },
                        { text: 'ColdFusion 2025 with feature update', value: 'c' },
                        { text: 'ColdFusion 2026', value: 'd' }
                    ],
                    correct: 'c',
                    explanation: 'AI features require ColdFusion 2025 with the AI feature update installed. These features are not available in earlier versions.'
                },
                {
                    question: 'What security best practices should be followed when using AI features? (Select all that apply)',
                    type: 'multiple',
                    answers: [
                        { text: 'Validate and sanitize all user inputs', value: 'validate' },
                        { text: 'Never hardcode API keys', value: 'keys' },
                        { text: 'Implement rate limiting', value: 'rate' },
                        { text: 'Log all AI interactions', value: 'log' }
                    ],
                    correct: ['validate', 'keys', 'rate', 'log'],
                    explanation: 'Security best practices include: prompt injection prevention through validation, secure API key storage, rate limiting to prevent abuse, and audit logging for compliance.'
                }
            ]
        }
    };

    const extra = (typeof CFTraining !== 'undefined' && CFTraining.quizQuestionsByModule)
        ? CFTraining.quizQuestionsByModule
        : {};
    return quizzes[moduleId] ?? extra[moduleId] ?? null;
};

// Used by scripts/verify_curriculum.mjs to validate merged quiz data (browser: harmless).
if (typeof globalThis !== 'undefined') {
    globalThis.__CFTrainingGetQuizData = getQuizData;
}

// Make functions available globally
window.startQuiz = startQuiz;
window.submitQuiz = submitQuiz;
window.resetQuiz = resetQuiz;

