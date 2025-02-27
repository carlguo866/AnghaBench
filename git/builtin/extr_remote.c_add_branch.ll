; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_add_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_add_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"refs/%s:refs/%s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"refs/heads/%s:refs/remotes/%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"^$\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32, %struct.strbuf*)* @add_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_branch(i8* %0, i8* %1, i8* %2, i32 %3, %struct.strbuf* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.strbuf* %4, %struct.strbuf** %10, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %12 = call i32 @strbuf_reset(%struct.strbuf* %11)
  %13 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %14 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext 43)
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  br label %28

22:                                               ; preds = %5
  %23 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @git_config_set_multivar(i8* %29, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @git_config_set_multivar(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
