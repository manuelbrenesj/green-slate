
function Index() {
    this.service = "ProjectInfo";
    this.ctrlActions = new ControlActions();
    this.FillTable = function (userId) {
        var table = $('#tblData'); 
        table.find("tbody tr").remove();
        this.ctrlActions.GetByIdToAPI(this.service, userId).then(function (response) {
            if (response) {                              
                $.each(response.Data, function (index, item) {
                    table.append("<tr><td>" + item.ProjectId +
                        "<td>" + item.StartDay +
                        "</td><td>" + item.TimeOfStart +
                        "</td><td>" + item.EndDate +
                        "</td><td>" + item.Credits +
                        "</td><td>" + item.Status + "</td></tr>");
                });
            }
        }).fail(function (response) {
            var data = response.responseJSON;
            var ctrlActions = new ControlActions();
            console.log(data);
        });
    };

    this.FillDropDown = function () {
        this.ctrlActions.GetData('user').then(function (response) {
            if (response) {
                $('#sltusuario').append(new Option('--', '', true));
                $.each(response.Data, function (index, item) {
                    $('#sltusuario').append(new Option(item.FirstName + ' ' + item.LastName, item.Id));
                });
            }
        }).fail(function (response) {
            var data = response.responseJSON;
            console.log(data);
        });
    };
}

$(document).ready(function () {
    var index = new Index();
    index.FillDropDown();

    $('#sltusuario').change(function () {
        var userId = $(this).children("option:selected").val();
        if (userId !== null) {
            index.FillTable(userId);
        }
    });
});