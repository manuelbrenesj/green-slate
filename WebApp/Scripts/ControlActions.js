function ControlActions() {
    this.URL_API = "https://localhost:44334/api/";

    this.GetUrlApiService = function (service) {
        return this.URL_API + service;
    };

    this.GetData = function (service) {
        var jqxhr = $.get(this.GetUrlApiService(service), function (data) {
            return data.Data;
        })
            .fail(function (response) {
                var data = response.responseJSON;
                console.log(data);
            });

        return jqxhr;
    };

    this.GetByIdToAPI = function (service, id) {
        var jqxhr = $.get(`${this.GetUrlApiService(service)}/${id}`, function (data) {
            return data.Data;
        })
            .fail(function (response) {
                var data = response.responseJSON;
                console.log(data);
            });

        return jqxhr;
    };
}
