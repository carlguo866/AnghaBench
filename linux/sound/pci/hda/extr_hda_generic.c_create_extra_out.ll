; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_create_extra_out.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_create_extra_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i8*, i32)* @create_extra_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_extra_out(%struct.hda_codec* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nid_path*, align 8
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %12, i32 %13)
  store %struct.nid_path* %14, %struct.nid_path** %10, align 8
  %15 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %16 = icmp ne %struct.nid_path* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %39

18:                                               ; preds = %4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %23 = call i32 @add_stereo_vol(%struct.hda_codec* %19, i8* %20, i32 %21, %struct.nid_path* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %33 = call i32 @add_stereo_sw(%struct.hda_codec* %29, i8* %30, i32 %31, %struct.nid_path* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %36, %26, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @add_stereo_vol(%struct.hda_codec*, i8*, i32, %struct.nid_path*) #1

declare dso_local i32 @add_stereo_sw(%struct.hda_codec*, i8*, i32, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
