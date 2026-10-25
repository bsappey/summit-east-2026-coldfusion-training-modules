/**
 * Demo CFC for this-scope samples (module-1 lesson-0).
 * Verified against Adobe ColdFusion User Guide (component / this scope).
 */
component displayName="ThisScopeDemo" {
    this.name = "UserService";
    this.version = "1.0";
    variables.privateData = "hidden";

    struct function getInfo() {
        return {
            name: this.name,
            version: this.version
        };
    }
}
