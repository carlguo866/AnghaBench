; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_icon_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_icon_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }

@SS_ICON = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CTL_STATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"help ID requires DIALOGEX\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"control data requires DIALOGEX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @define_icon_control(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca %struct.TYPE_11__, align 8
  %22 = alloca %struct.TYPE_11__, align 8
  %23 = bitcast %struct.TYPE_11__* %11 to { i32, i64 }*
  %24 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %23, i32 0, i32 0
  store i32 %0, i32* %24, align 8
  %25 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %23, i32 0, i32 1
  store i64 %1, i64* %25, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  store i32* %9, i32** %19, align 8
  %26 = load i32, i32* %15, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %10
  %29 = load i32, i32* @SS_ICON, align 4
  %30 = load i32, i32* @WS_CHILD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @WS_VISIBLE, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %28, %10
  %35 = call i32 @res_string_to_id(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @CTL_STATIC, align 4
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = bitcast %struct.TYPE_11__* %21 to { i32, i64 }*
  %46 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %45, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.TYPE_12__* @define_control(i32 %47, i64 %49, i32 %40, i32 %41, i32 %42, i32 0, i32 0, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %22, i32 %43, i32 %44)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %20, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = bitcast %struct.TYPE_11__* %52 to i8*
  %54 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %34
  %58 = load i32*, i32** %19, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @rcparse_warning(i32 %61)
  br label %63

63:                                               ; preds = %60, %57, %34
  %64 = load i32*, i32** %18, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32*, i32** %19, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 @rcparse_warning(i32 %70)
  br label %72

72:                                               ; preds = %69, %66, %63
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  ret %struct.TYPE_12__* %79
}

declare dso_local i32 @res_string_to_id(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.TYPE_12__* @define_control(i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rcparse_warning(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
