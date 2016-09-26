package com.jnardari.studycalabash;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    EditText cepEditText;
    Button buttonQuery;
    TextView resultTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        cepEditText = (EditText) findViewById(R.id.cepEditText);
        buttonQuery = (Button) findViewById(R.id.buttonQuery);
        resultTextView = (TextView) findViewById(R.id.resultTextView);

        buttonQuery.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                resultCEP(cepEditText.getText().toString());
            }
        });
    }

    private void resultCEP(String cep) {
        if (cep.isEmpty() || !cep.matches("[0-9]{8}")) {
            resultTextView.setText(R.string.invalid_cep);
            return;
        }

        switch(cep) {
            case "02211020":
                resultTextView.setText(R.string.street_name);
                return;
            default:
                resultTextView.setText(R.string.not_founded_cep);
        }
    }
}
