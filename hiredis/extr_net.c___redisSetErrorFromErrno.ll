; ModuleID = '/home/carl/AnghaBench/hiredis/extr_net.c___redisSetErrorFromErrno.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_net.c___redisSetErrorFromErrno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @__redisSetErrorFromErrno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__redisSetErrorFromErrno(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @errno, align 4
  store i32 %10, i32* %7, align 4
  %11 = bitcast [128 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 128, i1 false)
  store i64 0, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @snprintf(i8* %15, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i64, i64* %9, align 8
  %24 = sub i64 128, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @strerror_r(i32 %19, i8* %22, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %30 = call i32 @__redisSetError(i32* %27, i32 %28, i8* %29)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @strerror_r(i32, i8*, i32) #2

declare dso_local i32 @__redisSetError(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
