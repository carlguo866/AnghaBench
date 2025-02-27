; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_do_release_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_do_release_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_fwfile = type { i32*, i32* }

@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_fwfile*)* @bwn_do_release_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_do_release_fw(%struct.bwn_fwfile* %0) #0 {
  %2 = alloca %struct.bwn_fwfile*, align 8
  store %struct.bwn_fwfile* %0, %struct.bwn_fwfile** %2, align 8
  %3 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %2, align 8
  %4 = getelementptr inbounds %struct.bwn_fwfile, %struct.bwn_fwfile* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %2, align 8
  %9 = getelementptr inbounds %struct.bwn_fwfile, %struct.bwn_fwfile* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %12 = call i32 @firmware_put(i32* %10, i32 %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %2, align 8
  %15 = getelementptr inbounds %struct.bwn_fwfile, %struct.bwn_fwfile* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %2, align 8
  %17 = getelementptr inbounds %struct.bwn_fwfile, %struct.bwn_fwfile* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  ret void
}

declare dso_local i32 @firmware_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
