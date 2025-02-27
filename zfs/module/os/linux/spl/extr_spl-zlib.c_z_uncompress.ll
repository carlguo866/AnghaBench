; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-zlib.c_z_uncompress.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-zlib.c_z_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i8*, i8*, i32* }

@Z_BUF_ERROR = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@Z_MEM_ERROR = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_NEED_DICT = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z_uncompress(i8* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  store i32* %13, i32** %14, align 8
  %15 = load i64, i64* %9, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = ptrtoint i8* %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i8* %19, i8** %20, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @Z_BUF_ERROR, align 4
  store i32 %32, i32* %5, align 4
  br label %87

33:                                               ; preds = %4
  %34 = load i32, i32* @KM_SLEEP, align 4
  %35 = call i32 @zlib_workspace_alloc(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @Z_MEM_ERROR, align 4
  store i32 %41, i32* %5, align 4
  br label %87

42:                                               ; preds = %33
  %43 = call i32 @zlib_inflateInit(%struct.TYPE_5__* %10)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @Z_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @zlib_workspace_free(i32 %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %87

52:                                               ; preds = %42
  %53 = load i32, i32* @Z_FINISH, align 4
  %54 = call i32 @zlib_inflate(%struct.TYPE_5__* %10, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @Z_STREAM_END, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = call i32 @zlib_inflateEnd(%struct.TYPE_5__* %10)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @zlib_workspace_free(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @Z_NEED_DICT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @Z_BUF_ERROR, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %58
  %75 = load i32, i32* @Z_DATA_ERROR, align 4
  store i32 %75, i32* %5, align 4
  br label %87

76:                                               ; preds = %70, %66
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %87

78:                                               ; preds = %52
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %7, align 8
  store i64 %80, i64* %81, align 8
  %82 = call i32 @zlib_inflateEnd(%struct.TYPE_5__* %10)
  store i32 %82, i32* %11, align 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @zlib_workspace_free(i32 %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %78, %76, %74, %47, %40, %31
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @zlib_workspace_alloc(i32) #1

declare dso_local i32 @zlib_inflateInit(%struct.TYPE_5__*) #1

declare dso_local i32 @zlib_workspace_free(i32) #1

declare dso_local i32 @zlib_inflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zlib_inflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
