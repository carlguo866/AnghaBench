; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_process_config_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_process_config_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_config_line(i32* %0, %struct.passwd* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.passwd*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.passwd* %1, %struct.passwd** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load %struct.passwd*, %struct.passwd** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = load i32, i32* %16, align 4
  %26 = load i32*, i32** %17, align 8
  %27 = load i32, i32* %18, align 4
  %28 = call i32 @process_config_line_depth(i32* %19, %struct.passwd* %20, i8* %21, i8* %22, i8* %23, i8* %24, i32 %25, i32* %26, i32 %27, i32 0)
  ret i32 %28
}

declare dso_local i32 @process_config_line_depth(i32*, %struct.passwd*, i8*, i8*, i8*, i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
