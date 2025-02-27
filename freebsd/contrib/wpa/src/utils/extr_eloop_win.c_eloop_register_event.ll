; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_register_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_register_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.eloop_event* }
%struct.eloop_event = type { i64, i32, i8*, i8* }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@eloop = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eloop_register_event(i8* %0, i64 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.eloop_event*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 8
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %5
  store i32 -1, i32* %6, align 4
  br label %63

23:                                               ; preds = %18
  %24 = call i64 (...) @eloop_prepare_handles()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %63

27:                                               ; preds = %23
  %28 = load %struct.eloop_event*, %struct.eloop_event** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 1), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %30 = add nsw i32 %29, 1
  %31 = call %struct.eloop_event* @os_realloc_array(%struct.eloop_event* %28, i32 %30, i32 32)
  store %struct.eloop_event* %31, %struct.eloop_event** %12, align 8
  %32 = load %struct.eloop_event*, %struct.eloop_event** %12, align 8
  %33 = icmp eq %struct.eloop_event* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %63

35:                                               ; preds = %27
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.eloop_event*, %struct.eloop_event** %12, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.eloop_event, %struct.eloop_event* %37, i64 %39
  %41 = getelementptr inbounds %struct.eloop_event, %struct.eloop_event* %40, i32 0, i32 3
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.eloop_event*, %struct.eloop_event** %12, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.eloop_event, %struct.eloop_event* %43, i64 %45
  %47 = getelementptr inbounds %struct.eloop_event, %struct.eloop_event* %46, i32 0, i32 2
  store i8* %42, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.eloop_event*, %struct.eloop_event** %12, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.eloop_event, %struct.eloop_event* %49, i64 %51
  %53 = getelementptr inbounds %struct.eloop_event, %struct.eloop_event* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.eloop_event*, %struct.eloop_event** %12, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.eloop_event, %struct.eloop_event* %55, i64 %57
  %59 = getelementptr inbounds %struct.eloop_event, %struct.eloop_event* %58, i32 0, i32 0
  store i64 %54, i64* %59, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %62 = load %struct.eloop_event*, %struct.eloop_event** %12, align 8
  store %struct.eloop_event* %62, %struct.eloop_event** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 1), align 8
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %35, %34, %26, %22
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i64 @eloop_prepare_handles(...) #1

declare dso_local %struct.eloop_event* @os_realloc_array(%struct.eloop_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
