export PYTHONPATH="${PYTHONPATH}:$(pwd)/nmt"

python -m nmt.nmt\
    --attention=scaled_luong \
    --src=complex --tgt=simple \
    --subword_option=bpe \
    --vocab_prefix=data/PWKP/vocab.tok.bpe \
    --train_prefix=data/PWKP/train.tok.bpe \
    --dev_prefix=data/PWKP/val.tok.bpe \
    --test_prefix=data/PWKP/test.tok.bpe \
    --out_dir=model/nmt_attention_bpe_4_layers \
    --num_train_steps=50000 \
    --steps_per_stats=100 \
    --num_layers=4 \
    --num_units=256\
    --dropout=0.2 \
    --metrics=bleu
