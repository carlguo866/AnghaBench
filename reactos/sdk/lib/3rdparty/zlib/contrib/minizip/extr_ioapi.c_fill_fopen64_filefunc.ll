; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/zlib/contrib/minizip/extr_ioapi.c_fill_fopen64_filefunc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/zlib/contrib/minizip/extr_ioapi.c_fill_fopen64_filefunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@fopen64_file_func = common dso_local global i32 0, align 4
@fread_file_func = common dso_local global i32 0, align 4
@fwrite_file_func = common dso_local global i32 0, align 4
@ftell64_file_func = common dso_local global i32 0, align 4
@fseek64_file_func = common dso_local global i32 0, align 4
@fclose_file_func = common dso_local global i32 0, align 4
@ferror_file_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_fopen64_filefunc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @fopen64_file_func, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 7
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @fread_file_func, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @fwrite_file_func, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ftell64_file_func, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @fseek64_file_func, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @fclose_file_func, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ferror_file_func, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
