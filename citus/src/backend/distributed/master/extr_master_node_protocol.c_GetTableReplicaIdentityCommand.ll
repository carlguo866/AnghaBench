; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_node_protocol.c_GetTableReplicaIdentityCommand.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_node_protocol.c_GetTableReplicaIdentityCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@RELKIND_RELATION = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @GetTableReplicaIdentityCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetTableReplicaIdentityCommand(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %7 = load i32*, i32** @NIL, align 8
  store i32* %7, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call signext i8 @get_rel_relkind(i32 %8)
  store i8 %9, i8* %6, align 1
  %10 = load i8, i8* %6, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8, i8* @RELKIND_RELATION, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32*, i32** @NIL, align 8
  store i32* %16, i32** %2, align 8
  br label %28

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i8* @pg_get_replica_identity_command(i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @lappend(i32* %23, i8* %24)
  store i32* %25, i32** %4, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32*, i32** %4, align 8
  store i32* %27, i32** %2, align 8
  br label %28

28:                                               ; preds = %26, %15
  %29 = load i32*, i32** %2, align 8
  ret i32* %29
}

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i8* @pg_get_replica_identity_command(i32) #1

declare dso_local i32* @lappend(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
