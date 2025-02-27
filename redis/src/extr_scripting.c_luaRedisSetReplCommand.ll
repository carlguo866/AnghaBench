; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_luaRedisSetReplCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_luaRedisSetReplCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [120 x i8] c"You can set the replication behavior only after turning on single commands replication with redis.replicate_commands().\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"redis.set_repl() requires two arguments.\00", align 1
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@PROPAGATE_REPL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"Invalid replication flags. Use REPL_AOF, REPL_REPLICA, REPL_ALL or REPL_NONE.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaRedisSetReplCommand(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_pushstring(i32* %11, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_error(i32* %13)
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_pushstring(i32* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_error(i32* %21)
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_tonumber(i32* %25, i32 -1)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PROPAGATE_AOF, align 4
  %29 = load i32, i32* @PROPAGATE_REPL, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_pushstring(i32* %35, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_error(i32* %37)
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %34, %18, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
