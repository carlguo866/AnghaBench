; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_fs_fixup_uv2.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_fs_fixup_uv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64 }

@LJ_MAX_VSTACK = common dso_local global i64 0, align 8
@VSTACK_VAR_RW = common dso_local global i32 0, align 4
@PROTO_UV_LOCAL = common dso_local global i64 0, align 8
@PROTO_UV_IMMUTABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @fs_fixup_uv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_fixup_uv2(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = call i64* @proto_uv(%struct.TYPE_10__* %15)
  store i64* %16, i64** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %74, %2
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %20
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @LJ_MAX_VSTACK, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @LJ_MAX_VSTACK, align 8
  %35 = sub i64 %33, %34
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 %35, i64* %38, align 8
  br label %73

39:                                               ; preds = %24
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @VSTACK_VAR_RW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PROTO_UV_LOCAL, align 8
  %55 = or i64 %53, %54
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %55, i64* %58, align 8
  br label %72

59:                                               ; preds = %39
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PROTO_UV_LOCAL, align 8
  %66 = or i64 %64, %65
  %67 = load i64, i64* @PROTO_UV_IMMUTABLE, align 8
  %68 = or i64 %66, %67
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 %68, i64* %71, align 8
  br label %72

72:                                               ; preds = %59, %48
  br label %73

73:                                               ; preds = %72, %32
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %7, align 8
  br label %20

77:                                               ; preds = %20
  ret void
}

declare dso_local i64* @proto_uv(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
