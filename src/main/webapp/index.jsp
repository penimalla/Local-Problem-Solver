<!DOCTYPE html>
<html lang="en">
<head>
    <title>Local Problem Solver</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Inter:400,700&display=swap" rel="stylesheet">
    <style>
        body { margin:0; font-family:'Inter',sans-serif; background:#f5f6fa; color:#222; }
        .header { background:#2869d9; color:white; padding:32px 0 16px 0; text-align:center; }
        .header h1 { margin:0; font-size:2.3em; }
        .header p { margin-top:7px; font-size:1.08em; }
        .maincard { background:white; border-radius:14px; box-shadow:0 3px 18px #e3e6ee; max-width:650px; margin:30px auto 18px auto; padding:30px 20px; }
        .maincard h2 { font-size:1.22em; margin-bottom:25px; }
        label { font-weight:600; margin-bottom:4px; display:block;}
        .formrow { display:flex; gap:18px;}
        .formrow > div {flex:1;}
        .formcontrol { margin-bottom:14px; }
        input, select, textarea {width:100%;border-radius:7px;border:1px solid #dde5ec;padding:12px;font-size:1em;background:#fafbfc;}
        input[type="submit"] {
            background:#2869d9;color:white;border:0;border-radius:8px;padding:14px 0;
            font-size:1.08em;font-weight:700;cursor:pointer;width:100%;margin-top:18px;box-shadow:0 2px 9px #dae3f8;
        }
        input[type="submit"]:hover {background:#184cab;}
        @media (max-width: 700px){.maincard{padding:12px;}.formrow{flex-direction:column;gap:5px;}}
    </style>
</head>
<body>
    <div class="header">
        <h1>Local Problem Solver</h1>
        <p>Report and track local community issues</p>
    </div>
    <div class="maincard">
        <h2>📝 Report New Issue</h2>
        <form method="post" action="add-problem">
            <div class="formrow">
                <div class="formcontrol">
                    <label for="issueTitle">Issue Title</label>
                    <input type="text" id="issueTitle" name="issueTitle" placeholder="Brief description" required>
                </div>
                <div class="formcontrol">
                    <label for="category">Category</label>
                    <select id="category" name="category" required>
                        <option value="">Select category</option>
                        <option value="road">Damaged Road</option>
                        <option value="garbage">Garbage Issue</option>
                        <option value="water">Water Supply</option>
                        <option value="electricity">Streetlight/Power</option>
                    </select>
                </div>
            </div>
            <div class="formrow">
                <div class="formcontrol">
                    <label for="priority">Priority Level</label>
                    <select id="priority" name="priority" required>
                        <option value="">Select priority</option>
                        <option value="low">Low</option>
                        <option value="medium">Medium</option>
                        <option value="high">High</option>
                    </select>
                </div>
                <div class="formcontrol">
                    <label for="mobile">Mobile Number</label>
                    <input type="tel" id="mobile" name="mobile" pattern="[0-9]{10}" maxlength="10" placeholder="10-digit phone" required>
                </div>
            </div>
            <div class="formrow">
                <div class="formcontrol">
                    <label for="area">Area</label>
                    <input type="text" id="area" name="area" placeholder="Area or neighborhood" required>
                </div>
                <div class="formcontrol">
                    <label for="location">Location</label>
                    <input type="text" id="location" name="location" placeholder="Address or landmark" required>
                </div>
            </div>
            <div class="formcontrol">
                <label for="description">Detailed Description</label>
                <textarea name="description" id="description" rows="2" placeholder="More details (optional)"></textarea>
            </div>
            <div class="formcontrol">
                <label for="reporter">Your Name</label>
                <input type="text" id="reporter" name="reporter" placeholder="Your name">
            </div>
            <input type="submit" value="Submit Report">
        </form>
    </div>
    <div style="text-align:center;">
        <a href="dashboard" style="background:#2869d9; color:white; text-decoration:none; padding:11px 28px; border-radius:6px; font-weight:600;">View Dashboard</a>
    </div>
</body>
</html>
