; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_try_to_emulate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_try_to_emulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Can't step on instruction %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kprobe*, %struct.pt_regs*)* @try_to_emulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_emulate(%struct.kprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.kprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kprobe* %0, %struct.kprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %8 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @emulate_step(%struct.pt_regs* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %19 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %28 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %17
  br label %53

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 (...) @BUG()
  br label %52

38:                                               ; preds = %31
  %39 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %40 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %49 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %38
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @emulate_step(%struct.pt_regs*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
