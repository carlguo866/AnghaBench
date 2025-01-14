; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_print_nid_path_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_print_nid_path_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i8*, i32)* @print_nid_path_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_nid_path_idx(%struct.hda_codec* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %8, i32 %9)
  store %struct.nid_path* %10, %struct.nid_path** %7, align 8
  %11 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %12 = icmp ne %struct.nid_path* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %16 = call i32 @print_nid_path(i8* %14, %struct.nid_path* %15)
  br label %17

17:                                               ; preds = %13, %3
  ret void
}

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @print_nid_path(i8*, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
