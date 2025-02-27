; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_identify_cpu1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_identify_cpu1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_high = common dso_local global i8* null, align 8
@cpu_vendor = common dso_local global i8* null, align 8
@cpu_id = common dso_local global i8* null, align 8
@cpu_procinfo = common dso_local global i8* null, align 8
@cpu_feature = common dso_local global i8* null, align 8
@cpu_feature2 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @identify_cpu1() #0 {
  %1 = alloca [4 x i8*], align 16
  %2 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %3 = call i32 @do_cpuid(i32 0, i8** %2)
  %4 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %5 = load i8*, i8** %4, align 16
  store i8* %5, i8** @cpu_high, align 8
  %6 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 1
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** @cpu_vendor, align 8
  %8 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 3
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** getelementptr inbounds (i8*, i8** @cpu_vendor, i64 1), align 8
  %10 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 2
  %11 = load i8*, i8** %10, align 16
  store i8* %11, i8** getelementptr inbounds (i8*, i8** @cpu_vendor, i64 2), align 8
  %12 = load i8*, i8** @cpu_vendor, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 12
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %15 = call i32 @do_cpuid(i32 1, i8** %14)
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %17 = load i8*, i8** %16, align 16
  store i8* %17, i8** @cpu_id, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @cpu_procinfo, align 8
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 3
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @cpu_feature, align 8
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 2
  %23 = load i8*, i8** %22, align 16
  store i8* %23, i8** @cpu_feature2, align 8
  ret void
}

declare dso_local i32 @do_cpuid(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
