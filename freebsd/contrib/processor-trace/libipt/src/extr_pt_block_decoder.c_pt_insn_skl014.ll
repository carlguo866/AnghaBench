; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_insn_skl014.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_insn_skl014.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn = type { i32 }
%struct.pt_insn_ext = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn*, %struct.pt_insn_ext*)* @pt_insn_skl014 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_skl014(%struct.pt_insn* %0, %struct.pt_insn_ext* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_insn*, align 8
  %5 = alloca %struct.pt_insn_ext*, align 8
  store %struct.pt_insn* %0, %struct.pt_insn** %4, align 8
  store %struct.pt_insn_ext* %1, %struct.pt_insn_ext** %5, align 8
  %6 = load %struct.pt_insn*, %struct.pt_insn** %4, align 8
  %7 = icmp ne %struct.pt_insn* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %5, align 8
  %10 = icmp ne %struct.pt_insn_ext* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %27

12:                                               ; preds = %8
  %13 = load %struct.pt_insn*, %struct.pt_insn** %4, align 8
  %14 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %16 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %23
  ]

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %27

17:                                               ; preds = %12, %12
  %18 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %5, align 8
  %19 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %12
  %24 = load %struct.pt_insn*, %struct.pt_insn** %4, align 8
  %25 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %5, align 8
  %26 = call i32 @pt_insn_changes_cr3(%struct.pt_insn* %24, %struct.pt_insn_ext* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %17, %16, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @pt_insn_changes_cr3(%struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
