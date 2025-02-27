; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_rme_rate_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_rme_rate_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@snd_rme_rate_table = common dso_local global i32* null, align 8
@SND_RME_RATE_IDX_AES_SPDIF_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme_rate_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme_rate_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call i32 @snd_rme_get_status1(%struct.snd_kcontrol* %10, i32* %6)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %60 [
    i32 128, label %20
    i32 130, label %34
    i32 129, label %47
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @SND_RME_CLK_SYSTEM(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** @snd_rme_rate_table, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32*, i32** @snd_rme_rate_table, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %27, %20
  br label %63

34:                                               ; preds = %16
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @SND_RME_CLK_AES(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SND_RME_RATE_IDX_AES_SPDIF_NUM, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** @snd_rme_rate_table, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %40, %34
  br label %63

47:                                               ; preds = %16
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @SND_RME_CLK_SPDIF(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SND_RME_RATE_IDX_AES_SPDIF_NUM, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32*, i32** @snd_rme_rate_table, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %53, %47
  br label %63

60:                                               ; preds = %16
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %71

63:                                               ; preds = %59, %46, %33
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %64, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %63, %60, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @snd_rme_get_status1(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @SND_RME_CLK_SYSTEM(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @SND_RME_CLK_AES(i32) #1

declare dso_local i32 @SND_RME_CLK_SPDIF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
