; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbstok.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbstok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test__mbstok.delim = private unnamed_addr constant [2 x i8] c"t\00", align 1
@__const.test__mbstok.str = private unnamed_addr constant [8 x i8] c"!.!test\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"_mbstok(NULL, \22t\22) = %p, expected NULL (%p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"_mbstok(NULL, \22t\22) = %p, expected NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__mbstok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__mbstok() #0 {
  %1 = alloca [2 x i8], align 1
  %2 = alloca [8 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = bitcast [2 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test__mbstok.delim, i32 0, i32 0), i64 2, i1 false)
  %5 = bitcast [8 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test__mbstok.str, i32 0, i32 0), i64 8, i1 false)
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %7 = call i32 @strtok(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %9 = call i8* @_mbstok(i32* null, i8* %8)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %0
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %15 = getelementptr inbounds i8, i8* %14, i64 4
  %16 = icmp eq i8* %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @broken(i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %12, %0
  %21 = phi i1 [ true, %0 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %25 = call i32 (i32, i8*, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %24)
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %27 = call i8* @_mbstok(i32* null, i8* %26)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strtok(i8*, i8*) #2

declare dso_local i8* @_mbstok(i32*, i8*) #2

declare dso_local i32 @ok(i32, i8*, i8*, ...) #2

declare dso_local i64 @broken(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
