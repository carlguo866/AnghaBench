; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_vsrt_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_vsrt_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @gbt_vsrt_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbt_vsrt_cmp(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @gbt_var_key_readable(i32 %15)
  %17 = bitcast %struct.TYPE_9__* %8 to i64*
  store i64 %16, i64* %17, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @gbt_var_key_readable(i32 %21)
  %23 = bitcast %struct.TYPE_9__* %9 to i64*
  store i64 %22, i64* %23, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %10, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %30(i32 %32, i32 %34, i32 %37, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %49(i32 %51, i32 %53, i32 %56, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %3
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %44
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @gbt_var_key_readable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
