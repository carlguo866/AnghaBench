; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_print_cpu_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_print_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.cpuinfo_x86 = type { i64, i64, i8*, i32, i32, i32, i64* }

@X86_VENDOR_NUM = common dso_local global i64 0, align 8
@this_cpu = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d86\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c" (family: 0x%x, model: 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c", stepping: 0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_cpu_info(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i8*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %5 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @X86_VENDOR_NUM, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_cpu, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %15 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %20 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %18, %13
  br label %23

23:                                               ; preds = %22, %9
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %28 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %27, i32 0, i32 6
  %29 = load i64*, i64** %28, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strstr(i64* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %26, %23
  %37 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %38 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %37, i32 0, i32 6
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %45 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %44, i32 0, i32 6
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64* %46)
  br label %53

48:                                               ; preds = %36
  %49 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %50 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %55 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %58 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %62 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %53
  %66 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %67 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65, %53
  %71 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %72 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %77

75:                                               ; preds = %65
  %76 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %70
  ret void
}

declare dso_local i32 @strstr(i64*, i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
