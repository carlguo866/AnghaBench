; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_put_volsw_sx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_put_volsw_sx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_put_volsw_sx(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.soc_mixer_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %6, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %24, %struct.soc_mixer_control** %7, align 8
  %25 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %26 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %29 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %32 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %35 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %38 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %41 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @fls(i32 %45)
  %47 = sub nsw i32 %46, 1
  %48 = shl i32 1, %47
  %49 = sub i32 %48, 1
  store i32 %49, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %50, %51
  store i32 %52, i32* %17, align 4
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %14, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %64, %65
  store i32 %66, i32* %16, align 4
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %2
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %3, align 4
  br label %105

76:                                               ; preds = %2
  %77 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %78 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %81, %82
  store i32 %83, i32* %17, align 4
  %84 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %85 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %14, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %95, %96
  store i32 %97, i32* %18, align 4
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %98, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %80, %76
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %74
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
