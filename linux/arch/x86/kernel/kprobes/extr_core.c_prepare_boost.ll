; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_prepare_boost.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_prepare_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.insn = type { i32 }

@MAX_INSN_SIZE = common dso_local global i32 0, align 4
@RELATIVEJUMP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.kprobe*, %struct.insn*)* @prepare_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_boost(i32* %0, %struct.kprobe* %1, %struct.insn* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kprobe*, align 8
  %6 = alloca %struct.insn*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.kprobe* %1, %struct.kprobe** %5, align 8
  store %struct.insn* %2, %struct.insn** %6, align 8
  %8 = load %struct.insn*, %struct.insn** %6, align 8
  %9 = getelementptr inbounds %struct.insn, %struct.insn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.insn*, %struct.insn** %6, align 8
  %12 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %13 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @can_boost(%struct.insn* %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %3
  %18 = load i32, i32* @MAX_INSN_SIZE, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* @RELATIVEJUMP_SIZE, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %29 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %36 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.insn*, %struct.insn** %6, align 8
  %39 = getelementptr inbounds %struct.insn, %struct.insn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = call i32 @synthesize_reljump(i32* %27, i64 %34, i32 %41)
  %43 = load i32, i32* @RELATIVEJUMP_SIZE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %47 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %53

49:                                               ; preds = %17, %3
  %50 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %51 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %23
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i64 @can_boost(%struct.insn*, i32) #1

declare dso_local i32 @synthesize_reljump(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
