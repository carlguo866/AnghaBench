; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv_udp_init_ex.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv_udp_init_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i32*, i32* }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@UV_UDP = common dso_local global i32 0, align 4
@uv__udp_io = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_udp_init_ex(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 255
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @AF_INET, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @AF_INET6, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @AF_UNSPEC, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @UV_EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %20, %16, %3
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -256
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @UV_EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %72

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @AF_UNSPEC, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SOCK_DGRAM, align 4
  %39 = call i32 @uv__socket(i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %72

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %10, align 4
  br label %47

46:                                               ; preds = %32
  store i32 -1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = bitcast %struct.TYPE_3__* %49 to i32*
  %51 = load i32, i32* @UV_UDP, align 4
  %52 = call i32 @uv__handle_init(i32* %48, i32* %50, i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 6
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* @uv__udp_io, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @uv__io_init(i32* %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = call i32 @QUEUE_INIT(i32* %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = call i32 @QUEUE_INIT(i32* %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %47, %42, %30, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @uv__socket(i32, i32, i32) #1

declare dso_local i32 @uv__handle_init(i32*, i32*, i32) #1

declare dso_local i32 @uv__io_init(i32*, i32, i32) #1

declare dso_local i32 @QUEUE_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
