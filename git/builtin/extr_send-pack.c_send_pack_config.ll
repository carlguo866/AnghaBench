; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_send-pack.c_send_pack_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_send-pack.c_send_pack_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"push.gpgsign\00", align 1
@SEND_PACK_PUSH_CERT_NEVER = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SEND_PACK_PUSH_CERT_ALWAYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"if-asked\00", align 1
@SEND_PACK_PUSH_CERT_IF_ASKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid value for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @send_pack_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pack_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @git_gpg_config(i8* %9, i8* %10, i32* null)
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %3
  %16 = call i32 @git_config_get_value(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @git_parse_maybe_bool(i8* %19)
  switch i32 %20, label %25 [
    i32 0, label %21
    i32 1, label %23
  ]

21:                                               ; preds = %18
  %22 = load i32, i32* @SEND_PACK_PUSH_CERT_NEVER, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  br label %38

23:                                               ; preds = %18
  %24 = load i32, i32* @SEND_PACK_PUSH_CERT_ALWAYS, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  br label %38

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strcasecmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @SEND_PACK_PUSH_CERT_IF_ASKED, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  br label %37

34:                                               ; preds = %28, %25
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  store i32 %36, i32* %4, align 4
  br label %45

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %23, %21
  br label %39

39:                                               ; preds = %38, %15
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @git_default_config(i8* %41, i8* %42, i8* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @git_gpg_config(i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_get_value(i8*, i8**) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
