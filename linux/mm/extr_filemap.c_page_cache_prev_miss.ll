; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_page_cache_prev_miss.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_page_cache_prev_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.address_space = type { i32 }

@xas = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @page_cache_prev_miss(%struct.address_space* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.address_space*, %struct.address_space** %4, align 8
  %9 = getelementptr inbounds %struct.address_space, %struct.address_space* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xas, i32 0, i32 0), align 8
  %12 = call i32 @XA_STATE(i64 %11, i32* %9, i64 %10)
  br label %13

13:                                               ; preds = %31, %3
  %14 = load i64, i64* %6, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %6, align 8
  %16 = icmp ne i64 %14, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = call i8* @xas_prev(%struct.TYPE_4__* @xas)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @xa_is_value(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  br label %32

26:                                               ; preds = %21
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xas, i32 0, i32 0), align 8
  %28 = load i64, i64* @ULONG_MAX, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %32

31:                                               ; preds = %26
  br label %13

32:                                               ; preds = %30, %25, %13
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xas, i32 0, i32 0), align 8
  ret i64 %33
}

declare dso_local i32 @XA_STATE(i64, i32*, i64) #1

declare dso_local i8* @xas_prev(%struct.TYPE_4__*) #1

declare dso_local i64 @xa_is_value(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
