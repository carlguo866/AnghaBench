; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i64, i64, i64, i32, i32, i32*, i8*, i32* }

@SSHBUF_SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sshbuf* @sshbuf_from(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sshbuf*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @SSHBUF_SIZE_MAX, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = call %struct.sshbuf* @calloc(i32 56, i32 1)
  store %struct.sshbuf* %14, %struct.sshbuf** %6, align 8
  %15 = icmp eq %struct.sshbuf* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %9, %2
  store %struct.sshbuf* null, %struct.sshbuf** %3, align 8
  br label %37

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %20 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %22 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %21, i32 0, i32 1
  store i64 %18, i64* %22, align 8
  %23 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %24 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %23, i32 0, i32 0
  store i64 %18, i64* %24, align 8
  %25 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %26 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %25, i32 0, i32 3
  store i32 1, i32* %26, align 8
  %27 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %28 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %27, i32 0, i32 4
  store i32 1, i32* %28, align 4
  %29 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %30 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %29, i32 0, i32 7
  store i32* null, i32** %30, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %33 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %35 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %34, i32 0, i32 5
  store i32* null, i32** %35, align 8
  %36 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  store %struct.sshbuf* %36, %struct.sshbuf** %3, align 8
  br label %37

37:                                               ; preds = %17, %16
  %38 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  ret %struct.sshbuf* %38
}

declare dso_local %struct.sshbuf* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
