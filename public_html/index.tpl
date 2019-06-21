<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <link href="bootstrap.min (1).css" rel="stylesheet" type="text/css">
    <title>Contact Info</title>
</head>


<body>

    <pre>
<h2>{$smarty.now|date_format:"%b %e, %Y"}</h2> 
</pre>

    <form>
        <fieldset>
            <h3>Commit Card</h3>
            <div class="form-group">
                <label for="exampleInputName">First and Last Name</label>
                <input type="name" class="form-control" id="exampleInputName" aria-describedby="nameHelp"
                    placeholder="Enter name">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                    placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                    else.</small>
            </div>
            <div class="form-group">
                <label for="examplePhoneNumber">Phone Number</label>
                <input type="phoneNumber" class="form-control" id="examplephoneNumber" placeholder="Phone Number">
            </div>
            <div class="form-group">
                <label for="exampleSelect1">How did you hear about this meeting?</label>
                <select class="form-control" id="howYouHeard">
                    <option>Mailing</option>
                    <option>Through a Friend</option>
                    <option>Online</option>
                    <option>Window Announcement</option>
                    <option>Phone Call</option>
                </select>
            </div>
            <div class="form-group">
                <label for="exampleSelect2">Example multiple select</label>
                <select multiple="" class="form-control" id="exampleSelect2">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
            <div class="form-group">
                <label for="exampleTextarea">Example textarea</label>
                <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
            </div>
            <div class="form-group">
                <label for="exampleInputFile">File input</label>
                <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the
                    above input. It's a bit lighter and easily wraps to a new line.</small>
            </div>
            <fieldset class="form-group">
                <legend>Radio buttons</legend>
                <div class="form-check">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1"
                            value="option1" checked="">
                        Option one is this and that—be sure to include why it's great
                    </label>
                </div>
                <div class="form-check">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2"
                            value="option2">
                        Option two can be something else and selecting it will deselect option one
                    </label>
                </div>
                <div class="form-check disabled">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios3"
                            value="option3" disabled="">
                        Option three is disabled
                    </label>
                </div>
            </fieldset>
            <fieldset class="form-group">
                <legend>Checkboxes</legend>
                <div class="form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value="" checked="">
                        Option one is this and that—be sure to include why it's great
                    </label>
                </div>
                <div class="form-check disabled">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value="" disabled="">
                        Option two is disabled
                    </label>
                </div>
            </fieldset>
            <button type="submit" class="btn btn-primary">Submit</button>
        </fieldset>
    </form>

    <table>
        {foreach $names as $name}
        {strip}
        <tr>
            <td>{$name}</td>
        </tr>
        {/strip}
        {/foreach}
    </table>

    <table>
        {foreach $users as $user}
        {strip}
        <tr>
            <td>{$user.name}</td>
            <td>{$user.phone}</td>
        </tr>
        {/strip}
        {/foreach}
    </table>

    Name: {if $nickname neq ''}
    {$nickname}
    {elseif $name neq ''}
    {$name}
    {else}
    Friend
    {/if}
    Address: {$address}
    Mobile Phone: {$cell_phone}



</body>

</html>