; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_RegisterClassEx.c__CreateActCtxFromFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_RegisterClassEx.c__CreateActCtxFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@__const._CreateActCtxFromFile.ActCtx = private unnamed_addr constant %struct.TYPE_3__ { i32 4, i32* null }, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"GetModuleFileName failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_CreateActCtxFromFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %7 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_3__* @__const._CreateActCtxFromFile.ActCtx to i8*), i64 16, i1 false)
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = call i32 @GetModuleFileNameW(i32* null, i32* %11, i32 %12)
  %14 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = call i32* @wcsrchr(i32* %11, i32 92)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @wcscpy(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32* %11, i32** %24, align 8
  %25 = call i32 @CreateActCtxW(%struct.TYPE_3__* %3)
  %26 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %26)
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ok(i32, i8*) #3

declare dso_local i32 @GetModuleFileNameW(i32*, i32*, i32) #3

declare dso_local i32* @wcsrchr(i32*, i32) #3

declare dso_local i32 @wcscpy(i32*, i32) #3

declare dso_local i32 @CreateActCtxW(%struct.TYPE_3__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
