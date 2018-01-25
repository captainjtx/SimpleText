export PYTHONPATH="${PYTHONPATH}:$(pwd)/nmt"

python -m nmt.nmt\
    --attention=scaled_luong \
    --src=complex --tgt=simple \
    --vocab_prefix=model/GloVe/glove.6B.300d.50k\
    --train_prefix=data/WikNet/good_partial.train.tok\
    --embed_prefix=model/GloVe/glove.6B.300d.50k\
    --dev_prefix=data/PWKP/val\
    --test_prefix=data/PWKP/test\
    --out_dir=model/nmt_attention_glove \
    --num_train_steps=50000 \
    --steps_per_stats=100 \
    --num_layers=2 \
    --num_units=128 \
    --dropout=0.2 \
    --metrics=bleu
