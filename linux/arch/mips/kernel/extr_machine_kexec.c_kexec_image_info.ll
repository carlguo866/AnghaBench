; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_machine_kexec.c_kexec_image_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_machine_kexec.c_kexec_image_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"kexec kimage info:\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"  type:        %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"  start:       %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"  head:        %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"  nr_segments: %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"    segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kimage*)* @kexec_image_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kexec_image_info(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i64, align 8
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %4 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.kimage*, %struct.kimage** %2, align 8
  %6 = getelementptr inbounds %struct.kimage, %struct.kimage* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load %struct.kimage*, %struct.kimage** %2, align 8
  %10 = getelementptr inbounds %struct.kimage, %struct.kimage* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = load %struct.kimage*, %struct.kimage** %2, align 8
  %14 = getelementptr inbounds %struct.kimage, %struct.kimage* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = load %struct.kimage*, %struct.kimage** %2, align 8
  %18 = getelementptr inbounds %struct.kimage, %struct.kimage* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %19)
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %68, %1
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.kimage*, %struct.kimage** %2, align 8
  %24 = getelementptr inbounds %struct.kimage, %struct.kimage* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %21
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.kimage*, %struct.kimage** %2, align 8
  %30 = getelementptr inbounds %struct.kimage, %struct.kimage* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.kimage*, %struct.kimage** %2, align 8
  %37 = getelementptr inbounds %struct.kimage, %struct.kimage* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.kimage*, %struct.kimage** %2, align 8
  %44 = getelementptr inbounds %struct.kimage, %struct.kimage* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %42, %49
  %51 = load %struct.kimage*, %struct.kimage** %2, align 8
  %52 = getelementptr inbounds %struct.kimage, %struct.kimage* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.kimage*, %struct.kimage** %2, align 8
  %59 = getelementptr inbounds %struct.kimage, %struct.kimage* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PAGE_SIZE, align 8
  %66 = udiv i64 %64, %65
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i64 %28, i64 %35, i64 %50, i64 %57, i64 %66)
  br label %68

68:                                               ; preds = %27
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %3, align 8
  br label %21

71:                                               ; preds = %21
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
