/**
 * Catalog visibility (content remains in modules-data.js; hidden from learners).
 * Keep config/training-visibility.cfm in sync when changing hiddenModuleIds.
 */
window.CFTrainingVisibility = {
    hiddenModuleIds: []
};

function isModulePublic(moduleId) {
    const hidden = window.CFTrainingVisibility?.hiddenModuleIds || [];
    return !hidden.includes(Number(moduleId));
}

function getPublicModulesData() {
    if (typeof getModulesData !== 'function') {
        return [];
    }
    return getModulesData().filter((m) => isModulePublic(m.id));
}

function getPublicModuleData(moduleId) {
    if (!isModulePublic(moduleId)) {
        return null;
    }
    return typeof getModuleData === 'function' ? getModuleData(moduleId) : null;
}

function getNextPublicModuleId(currentId) {
    const ids = getPublicModulesData().map((m) => m.id).sort((a, b) => a - b);
    const idx = ids.indexOf(Number(currentId));
    if (idx >= 0 && idx < ids.length - 1) {
        return ids[idx + 1];
    }
    return null;
}
