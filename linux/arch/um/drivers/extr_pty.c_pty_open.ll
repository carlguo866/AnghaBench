; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_pty.c_pty_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_pty.c_pty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pty_chan = type { i8*, i32, i32 (i8*, i32)*, i64 }

@__const.pty_open.dev = private unnamed_addr constant [12 x i8] c"/dev/ptyxx\00\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i8**)* @pty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pty_open(i32 %0, i32 %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.pty_chan*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [12 x i8], align 1
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.pty_chan*
  store %struct.pty_chan* %17, %struct.pty_chan** %12, align 8
  %18 = bitcast [12 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.pty_open.dev, i32 0, i32 0), i64 12, i1 false)
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %20 = call i32 @getmaster(i8* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %65

25:                                               ; preds = %5
  %26 = load %struct.pty_chan*, %struct.pty_chan** %12, align 8
  %27 = getelementptr inbounds %struct.pty_chan, %struct.pty_chan* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @raw(i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %65

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.pty_chan*, %struct.pty_chan** %12, align 8
  %42 = getelementptr inbounds %struct.pty_chan, %struct.pty_chan* %41, i32 0, i32 2
  %43 = load i32 (i8*, i32)*, i32 (i8*, i32)** %42, align 8
  %44 = icmp ne i32 (i8*, i32)* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.pty_chan*, %struct.pty_chan** %12, align 8
  %47 = getelementptr inbounds %struct.pty_chan, %struct.pty_chan* %46, i32 0, i32 2
  %48 = load i32 (i8*, i32)*, i32 (i8*, i32)** %47, align 8
  %49 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %50 = load %struct.pty_chan*, %struct.pty_chan** %12, align 8
  %51 = getelementptr inbounds %struct.pty_chan, %struct.pty_chan* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %48(i8* %49, i32 %52)
  br label %54

54:                                               ; preds = %45, %40
  %55 = load %struct.pty_chan*, %struct.pty_chan** %12, align 8
  %56 = getelementptr inbounds %struct.pty_chan, %struct.pty_chan* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %59 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.pty_chan*, %struct.pty_chan** %12, align 8
  %61 = getelementptr inbounds %struct.pty_chan, %struct.pty_chan* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %11, align 8
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %54, %35, %23
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @getmaster(i8*) #2

declare dso_local i32 @raw(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
