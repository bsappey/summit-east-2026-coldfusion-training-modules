component {

    public struct function validate(required string message) {
        var result = {
            result: "success",
            message: "",
            repromptMessage: ""
        };
        var patterns = [
            "ignore previous instructions",
            "disregard all previous",
            "reveal your internal rules",
            "system:"
        ];

        for (var pattern in patterns) {
            if (findNoCase(pattern, arguments.message)) {
                result.result = "failure";
                result.message = "Possible prompt injection detected.";
                return result;
            }
        }

        if (len(arguments.message) > 10000) {
            result.result = "fatal";
            result.message = "Input exceeds the maximum allowed length.";
        }

        return result;
    }
}
