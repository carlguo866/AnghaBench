; ModuleID = '/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_read_property.c'
source_filename = "/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_read_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i8*, i8**)* }

@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@__const.Lab_read_property.kwlist = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"'%s' not readable.\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Internal error while reading key '%s'.\00", align 1
@PyExc_KeyError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"'%s' not found.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @Lab_read_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Lab_read_property(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i8*], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([2 x i8*]* @__const.Lab_read_property.kwlist to i8*), i64 16, i1 false)
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %18 = call i32 @PyArg_ParseTupleAndKeywords(i32* %15, i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %17, i8** %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %49

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i32, i8*, i8**)*, i32 (i32, i8*, i8**)** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 %26(i32 %29, i8* %30, i8** %10)
  switch i32 %31, label %44 [
    i32 128, label %32
    i32 129, label %35
    i32 131, label %39
    i32 130, label %43
  ]

32:                                               ; preds = %21
  %33 = load i8*, i8** %10, align 8
  %34 = call i32* @PyString_FromString(i8* %33)
  store i32* %34, i32** %4, align 8
  br label %49

35:                                               ; preds = %21
  %36 = load i32, i32* @PyExc_TypeError, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @PyErr_Format(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %48

39:                                               ; preds = %21
  %40 = load i32, i32* @PyExc_TypeError, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @PyErr_Format(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %48

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %21, %43
  %45 = load i32, i32* @PyExc_KeyError, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @PyErr_Format(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %39, %35
  store i32* null, i32** %4, align 8
  br label %49

49:                                               ; preds = %48, %32, %20
  %50 = load i32*, i32** %4, align 8
  ret i32* %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i8**) #2

declare dso_local i32* @PyString_FromString(i8*) #2

declare dso_local i32 @PyErr_Format(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
