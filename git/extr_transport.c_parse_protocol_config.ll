; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_parse_protocol_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_parse_protocol_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"always\00", align 1
@PROTOCOL_ALLOW_ALWAYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@PROTOCOL_ALLOW_NEVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@PROTOCOL_ALLOW_USER_ONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"unknown value for config '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @parse_protocol_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_protocol_config(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strcasecmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @PROTOCOL_ALLOW_ALWAYS, align 4
  store i32 %10, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @PROTOCOL_ALLOW_NEVER, align 4
  store i32 %16, i32* %3, align 4
  br label %30

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @PROTOCOL_ALLOW_USER_ONLY, align 4
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24
  %26 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @die(i32 %26, i8* %27, i8* %28)
  br label %30

30:                                               ; preds = %25, %21, %15, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @die(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
