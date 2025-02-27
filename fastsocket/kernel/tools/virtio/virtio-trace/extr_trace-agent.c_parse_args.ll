; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_info = type { i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"hos:\00", align 1
@optarg = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8**, %struct.agent_info*)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_args(i32 %0, i8** %1, %struct.agent_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.agent_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.agent_info* %2, %struct.agent_info** %6, align 8
  br label %9

9:                                                ; preds = %35, %3
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %36

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %30 [
    i32 111, label %16
    i32 115, label %19
    i32 104, label %29
  ]

16:                                               ; preds = %14
  %17 = load %struct.agent_info*, %struct.agent_info** %6, align 8
  %18 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %35

19:                                               ; preds = %14
  %20 = load i32, i32* @optarg, align 4
  %21 = call i64 @parse_size(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %39

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.agent_info*, %struct.agent_info** %6, align 8
  %28 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  br label %35

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %14, %29
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @usage(i8* %33)
  br label %39

35:                                               ; preds = %25, %16
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.agent_info*, %struct.agent_info** %6, align 8
  %38 = call i32 @agent_info_init(%struct.agent_info* %37)
  ret i8* null

39:                                               ; preds = %30, %24
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  %41 = call i32 @exit(i32 %40) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @parse_size(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @agent_info_init(%struct.agent_info*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
