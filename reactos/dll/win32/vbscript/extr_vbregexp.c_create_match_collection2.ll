; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbregexp.c_create_match_collection2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbregexp.c_create_match_collection2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@MatchCollection2_tid = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@MatchCollection2Vtbl = common dso_local global i32 0, align 4
@MatchCollectionVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__**)* @create_match_collection2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_match_collection2(%struct.TYPE_8__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %3, align 8
  %6 = load i32, i32* @MatchCollection2_tid, align 4
  %7 = call i32 @init_regexp_typeinfo(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @FAILED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = call %struct.TYPE_7__* @heap_alloc_zero(i32 24)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32* @MatchCollection2Vtbl, i32** %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32* @MatchCollectionVtbl, i32** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %30, align 8
  %31 = load i32, i32* @S_OK, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %19, %17, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @init_regexp_typeinfo(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_7__* @heap_alloc_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
