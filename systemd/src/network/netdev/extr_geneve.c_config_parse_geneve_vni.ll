; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_geneve.c_config_parse_geneve_vni.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_geneve.c_config_parse_geneve_vni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to parse Geneve VNI '%s'.\00", align 1
@GENEVE_VID_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Geneve VNI out is of range '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_geneve_vni(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_2__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %25 = load i8*, i8** %21, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %22, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %19, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %20, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %19, align 8
  %36 = call i32 @safe_atou32(i8* %35, i64* %23)
  store i32 %36, i32* %24, align 4
  %37 = load i32, i32* %24, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %10
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %24, align 4
  %45 = load i8*, i8** %19, align 8
  %46 = call i32 @log_syntax(i8* %40, i32 %41, i8* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %45)
  store i32 0, i32* %11, align 4
  br label %63

47:                                               ; preds = %10
  %48 = load i64, i64* %23, align 8
  %49 = load i64, i64* @GENEVE_VID_MAX, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %24, align 4
  %57 = load i8*, i8** %19, align 8
  %58 = call i32 @log_syntax(i8* %52, i32 %53, i8* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  store i32 0, i32* %11, align 4
  br label %63

59:                                               ; preds = %47
  %60 = load i64, i64* %23, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %51, %39
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @safe_atou32(i8*, i64*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
