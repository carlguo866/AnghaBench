; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_heap.c_spl_ptr_heap_cmp_cb_helper.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_heap.c_spl_ptr_heap_cmp_cb_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@exception = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*, i32*, i32*)* @spl_ptr_heap_cmp_cb_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_ptr_heap_cmp_cb_helper(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @Z_OBJ_P(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @zend_call_method_with_2_params(i32 %14, i32 %18, i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %12, i32* %21, i32* %22)
  %24 = load i32, i32* @exception, align 4
  %25 = call i64 @EG(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @FAILURE, align 4
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %5
  %30 = call i32 @zval_get_long(i32* %12)
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  %32 = call i32 @zval_ptr_dtor(i32* %12)
  %33 = load i32, i32* @SUCCESS, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %27
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @zend_call_method_with_2_params(i32, i32, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @zval_get_long(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
