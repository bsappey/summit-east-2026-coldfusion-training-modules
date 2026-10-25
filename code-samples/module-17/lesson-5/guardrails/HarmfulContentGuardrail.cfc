component {

    public struct function validate(required string message) {
        var result = {
            result: "success",
            message: "",
            repromptMessage: ""
        };
        var blockedPatterns = [
            "reveal the system prompt",
            "expose internal credentials",
            "provide a private api key"
        ];

        for (var pattern in blockedPatterns) {
            if (findNoCase(pattern, arguments.message)) {
                result.result = "failure";
                result.message = "The model response contains restricted content.";
                return result;
            }
        }

        return result;
    }
}
