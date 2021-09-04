function out = filterUnit(fps, signal)

intial_cut=2;
BPM_L =40; BPM_H =150;        % [bpm] Valid heart rate range
[b, a] = butter(2, [(((BPM_L)/60)/fps*2) (((BPM_H)/60)/fps*2)]);

out = filter(b, a, signal);
out = out(fps*intial_cut:size(out,2));
