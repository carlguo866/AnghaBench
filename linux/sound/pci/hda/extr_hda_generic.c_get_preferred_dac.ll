; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_get_preferred_dac.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_get_preferred_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hda_codec*, i64)* @get_preferred_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_preferred_dac(%struct.hda_codec* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca i64*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %6, align 8
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %7, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %36

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  br label %36

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  store i64* %34, i64** %7, align 8
  br label %18

35:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %35, %27, %16
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
