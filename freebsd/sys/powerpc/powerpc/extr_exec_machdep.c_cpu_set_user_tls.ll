; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_cpu_set_user_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_cpu_set_user_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8** }

@SV_LP64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_set_user_tls(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i8*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SV_LP64, align 4
  %9 = call i64 @SV_PROC_FLAG(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr i8, i8* %12, i64 28688
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 13
  store i8* %13, i8** %19, align 8
  br label %29

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr i8, i8* %21, i64 28680
  %23 = load %struct.thread*, %struct.thread** %3, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  store i8* %22, i8** %28, align 8
  br label %29

29:                                               ; preds = %20, %11
  ret i32 0
}

declare dso_local i64 @SV_PROC_FLAG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
