; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_snd_emu10k1_send_volume_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_snd_emu10k1_send_volume_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_emu10k1 = type { i32, i64, %struct.snd_emu10k1_pcm_mixer* }
%struct.snd_emu10k1_pcm_mixer = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_emu10k1_send_volume_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_send_volume_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %6, align 8
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 2
  %14 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %13, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 1
  %18 = call i64 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %15, i32* %17)
  %19 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %14, i64 %18
  store %struct.snd_emu10k1_pcm_mixer* %19, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 8, i32 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %26, i32 0, i32 0
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %59, %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 3, %32
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %7, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %38, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = srem i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %50, i32* %58, align 4
  br label %59

59:                                               ; preds = %35
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %30

62:                                               ; preds = %30
  %63 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %64 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %63, i32 0, i32 0
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  ret i32 0
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
