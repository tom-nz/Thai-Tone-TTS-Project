from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

HIGH_CLASS = set("ขฃฉฐถผฝศษสห")
MID_CLASS = set("กจดตบปอฎฏ")
LOW_CLASS = set("คฅฆงชซฌญฑฒณทธนพฟภมยรลวฬฮ")

def analyze_phonetics(word: str):
    first_char = word[0] if word else ""
    c_class = "ไม่ระบุ"
    if first_char in HIGH_CLASS:
        c_class = "อักษรสูง"
    elif first_char in MID_CLASS:
        c_class = "อักษรกลาง"
    elif first_char in LOW_CLASS:
        c_class = "อักษรต่ำ"

    return {
        "word": word,
        "class": c_class,
        "pitch_target": "261.63 Hz (C4 - กลาง/สามัญ)" if c_class == "อักษรกลาง" else "220.00 Hz (A3)"
    }

@app.route("/analyze", methods=["GET"])
def get_analysis():
    text = request.args.get("text", "")
    return jsonify(analyze_phonetics(text))

if __name__ == "__main__":
    app.run(host="127.0.0.1", port=8080, debug=False)