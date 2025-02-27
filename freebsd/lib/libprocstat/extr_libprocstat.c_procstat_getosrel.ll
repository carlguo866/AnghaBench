; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getosrel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getosrel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32, i32, i32 }
%struct.kinfo_proc = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unknown access method: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @procstat_getosrel(%struct.procstat* %0, %struct.kinfo_proc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.procstat*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i32*, align 8
  store %struct.procstat* %0, %struct.procstat** %5, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.procstat*, %struct.procstat** %5, align 8
  %9 = getelementptr inbounds %struct.procstat, %struct.procstat* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %30 [
    i32 129, label %11
    i32 128, label %18
    i32 130, label %24
  ]

11:                                               ; preds = %3
  %12 = load %struct.procstat*, %struct.procstat** %5, align 8
  %13 = getelementptr inbounds %struct.procstat, %struct.procstat* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @procstat_getosrel_kvm(i32 %14, %struct.kinfo_proc* %15, i32* %16)
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %20 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @procstat_getosrel_sysctl(i32 %21, i32* %22)
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.procstat*, %struct.procstat** %5, align 8
  %26 = getelementptr inbounds %struct.procstat, %struct.procstat* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @procstat_getosrel_core(i32 %27, i32* %28)
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.procstat*, %struct.procstat** %5, align 8
  %32 = getelementptr inbounds %struct.procstat, %struct.procstat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %24, %18, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @procstat_getosrel_kvm(i32, %struct.kinfo_proc*, i32*) #1

declare dso_local i32 @procstat_getosrel_sysctl(i32, i32*) #1

declare dso_local i32 @procstat_getosrel_core(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
