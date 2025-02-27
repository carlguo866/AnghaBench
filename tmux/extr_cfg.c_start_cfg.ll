; ModuleID = '/home/carl/AnghaBench/tmux/extr_cfg.c_start_cfg.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cfg.c_start_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }

@clients = common dso_local global i32 0, align 4
@cfg_client = common dso_local global %struct.client* null, align 8
@cfg_client_done = common dso_local global i32 0, align 4
@cfg_item = common dso_local global i32 0, align 4
@cfg_file = common dso_local global i32* null, align 8
@TMUX_CONF = common dso_local global i32* null, align 8
@CMD_PARSE_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s/.tmux.conf\00", align 1
@cfg_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_cfg() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.client*, align 8
  store i32 0, i32* %2, align 4
  %4 = call %struct.client* @TAILQ_FIRST(i32* @clients)
  store %struct.client* %4, %struct.client** %3, align 8
  store %struct.client* %4, %struct.client** @cfg_client, align 8
  %5 = load %struct.client*, %struct.client** %3, align 8
  %6 = icmp ne %struct.client* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* @cfg_client_done, align 4
  %9 = call i32 @cmdq_get_callback(i32 %8, i32* null)
  store i32 %9, i32* @cfg_item, align 4
  %10 = load %struct.client*, %struct.client** %3, align 8
  %11 = load i32, i32* @cfg_item, align 4
  %12 = call i32 @cmdq_append(%struct.client* %10, i32 %11)
  br label %13

13:                                               ; preds = %7, %0
  %14 = load i32*, i32** @cfg_file, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32*, i32** @TMUX_CONF, align 8
  %18 = load %struct.client*, %struct.client** %3, align 8
  %19 = load i32, i32* @CMD_PARSE_QUIET, align 4
  %20 = call i32 @load_cfg(i32* %17, %struct.client* %18, i32* null, i32 %19, i32* null)
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32*, i32** @cfg_file, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = call i8* (...) @find_home()
  store i8* %25, i8** %1, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %1, align 8
  %29 = call i32 @xasprintf(i32** @cfg_file, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @CMD_PARSE_QUIET, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %24, %21
  %32 = load i32*, i32** @cfg_file, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32*, i32** @cfg_file, align 8
  %36 = load %struct.client*, %struct.client** %3, align 8
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @load_cfg(i32* %35, %struct.client* %36, i32* null, i32 %37, i32* null)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* @cfg_done, align 4
  %41 = call i32 @cmdq_get_callback(i32 %40, i32* null)
  %42 = call i32 @cmdq_append(%struct.client* null, i32 %41)
  ret void
}

declare dso_local %struct.client* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @cmdq_get_callback(i32, i32*) #1

declare dso_local i32 @cmdq_append(%struct.client*, i32) #1

declare dso_local i32 @load_cfg(i32*, %struct.client*, i32*, i32, i32*) #1

declare dso_local i8* @find_home(...) #1

declare dso_local i32 @xasprintf(i32**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
