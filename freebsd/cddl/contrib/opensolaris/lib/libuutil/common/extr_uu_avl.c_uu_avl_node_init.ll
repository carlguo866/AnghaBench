; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_avl.c_uu_avl_node_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_avl.c_uu_avl_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [82 x i8] c"uu_avl_node_init(%p, %p, %p (\22%s\22)): offset %ld doesn't fit in object (size %ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"uu_avl_node_init(%p, %p, %p (\22%s\22)): offset %ld doesn't match pool's offset (%ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uu_avl_node_init(i8* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to i64*
  store i64* %10, i64** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = ptrtoint i32* %16 to i64
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = sub i64 %17, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %21, 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %15
  %28 = load i8*, i8** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = bitcast %struct.TYPE_4__* %31 to i8*
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @uu_panic(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %30, i8* %32, i32 %35, i64 %36, i64 %39)
  br label %41

41:                                               ; preds = %27, %15
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = bitcast %struct.TYPE_4__* %51 to i8*
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @uu_panic(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i8* %48, i8* %50, i8* %52, i32 %55, i64 %56, i64 %59)
  br label %61

61:                                               ; preds = %47, %41
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = call i64 @POOL_TO_MARKER(%struct.TYPE_4__* %63)
  %65 = load i64*, i64** %7, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store i64 %64, i64* %66, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  store i64 0, i64* %68, align 8
  ret void
}

declare dso_local i32 @uu_panic(i8*, i8*, i8*, i8*, i32, i64, i64) #1

declare dso_local i64 @POOL_TO_MARKER(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
