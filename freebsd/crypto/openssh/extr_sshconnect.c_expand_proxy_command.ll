; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_expand_proxy_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_expand_proxy_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NI_MAXSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"exec %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32)* @expand_proxy_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_proxy_command(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @NI_MAXSERV, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %11, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %12, align 8
  %17 = trunc i64 %14 to i32
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @xasprintf(i8** %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %25 = call i8* @percent_expand(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %24, i8* null)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %29)
  ret i8* %28
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @xasprintf(i8**, i8*, i8*) #2

declare dso_local i8* @percent_expand(i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
