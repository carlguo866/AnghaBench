; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_TEIInit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_TEIInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@debug = common dso_local global i32* null, align 8
@TEI_STATE_COUNT = common dso_local global i8* null, align 8
@teifsmu = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TEI_EVENT_COUNT = common dso_local global i8* null, align 8
@strTeiEvent = common dso_local global i8* null, align 8
@strTeiState = common dso_local global i8* null, align 8
@TeiFnListUser = common dso_local global i32 0, align 4
@teifsmn = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TeiFnListNet = common dso_local global i32 0, align 4
@DEACT_STATE_COUNT = common dso_local global i8* null, align 8
@deactfsm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@DEACT_EVENT_COUNT = common dso_local global i8* null, align 8
@strDeactEvent = common dso_local global i8* null, align 8
@strDeactState = common dso_local global i8* null, align 8
@DeactFnList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TEIInit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** @debug, align 8
  %4 = load i8*, i8** @TEI_STATE_COUNT, align 8
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teifsmu, i32 0, i32 3), align 8
  %5 = load i8*, i8** @TEI_EVENT_COUNT, align 8
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teifsmu, i32 0, i32 2), align 8
  %6 = load i8*, i8** @strTeiEvent, align 8
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teifsmu, i32 0, i32 1), align 8
  %7 = load i8*, i8** @strTeiState, align 8
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teifsmu, i32 0, i32 0), align 8
  %8 = load i32, i32* @TeiFnListUser, align 4
  %9 = load i32, i32* @TeiFnListUser, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @mISDN_FsmNew(%struct.TYPE_5__* @teifsmu, i32 %8, i32 %10)
  %12 = load i8*, i8** @TEI_STATE_COUNT, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teifsmn, i32 0, i32 3), align 8
  %13 = load i8*, i8** @TEI_EVENT_COUNT, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teifsmn, i32 0, i32 2), align 8
  %14 = load i8*, i8** @strTeiEvent, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teifsmn, i32 0, i32 1), align 8
  %15 = load i8*, i8** @strTeiState, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @teifsmn, i32 0, i32 0), align 8
  %16 = load i32, i32* @TeiFnListNet, align 4
  %17 = load i32, i32* @TeiFnListNet, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = call i32 @mISDN_FsmNew(%struct.TYPE_5__* @teifsmn, i32 %16, i32 %18)
  %20 = load i8*, i8** @DEACT_STATE_COUNT, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @deactfsm, i32 0, i32 3), align 8
  %21 = load i8*, i8** @DEACT_EVENT_COUNT, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @deactfsm, i32 0, i32 2), align 8
  %22 = load i8*, i8** @strDeactEvent, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @deactfsm, i32 0, i32 1), align 8
  %23 = load i8*, i8** @strDeactState, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @deactfsm, i32 0, i32 0), align 8
  %24 = load i32, i32* @DeactFnList, align 4
  %25 = load i32, i32* @DeactFnList, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @mISDN_FsmNew(%struct.TYPE_5__* @deactfsm, i32 %24, i32 %26)
  ret i32 0
}

declare dso_local i32 @mISDN_FsmNew(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
