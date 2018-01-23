export PYTHONPATH="${PYTHONPATH}:$(pwd)/nmt"

python -m nmt.nmt\
    --attention=scaled_luong \
    --src=complex --tgt=simple \
    --share_vocab=1 \
    --subword_option=bpe \
    --vocab_prefix=model/vocab.all.tok.bpe \
    --train_prefix=model/train.tok.bpe \
    --dev_prefix=model/val.tok.bpe \
    --test_prefix=model/test.tok.bpe \
    --out_dir=model/nmt_attention_bpe_3_layers \
    --num_train_steps=20000 \
    --steps_per_stats=100 \
    --num_layers=3 \
    --num_units=128 \
    --dropout=0.2 \
    --metrics=bleu
