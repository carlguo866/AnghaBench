; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_dir_get_iterator.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_dir_get_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }

@spl_ce_RuntimeException = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"An iterator cannot be used with foreach by reference\00", align 1
@spl_filesystem_dir_it_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @spl_filesystem_dir_get_iterator(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @spl_ce_RuntimeException, align 4
  %14 = call i32 @zend_throw_exception(i32 %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %37

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @Z_SPLFILESYSTEM_P(i32* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call %struct.TYPE_6__* @spl_filesystem_object_to_iterator(i32* %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %8, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @Z_ADDREF_P(i32* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @Z_OBJ_P(i32* %25)
  %27 = call i32 @ZVAL_OBJ(i32* %24, i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32* @spl_filesystem_dir_it_funcs, i32** %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %4, align 8
  br label %37

37:                                               ; preds = %15, %12
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %38
}

declare dso_local i32 @zend_throw_exception(i32, i8*, i32) #1

declare dso_local i32* @Z_SPLFILESYSTEM_P(i32*) #1

declare dso_local %struct.TYPE_6__* @spl_filesystem_object_to_iterator(i32*) #1

declare dso_local i32 @Z_ADDREF_P(i32*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i32) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
