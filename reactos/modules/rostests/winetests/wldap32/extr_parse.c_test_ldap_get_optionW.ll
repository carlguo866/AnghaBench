; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wldap32/extr_parse.c_test_ldap_get_optionW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wldap32/extr_parse.c_test_ldap_get_optionW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDAP_OPT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ldap_get_optionW failed 0x%08x\0A\00", align 1
@LDAP_VERSION3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_ldap_get_optionW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ldap_get_optionW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @LDAP_OPT_PROTOCOL_VERSION, align 4
  %7 = call i64 @ldap_get_optionW(i32* %5, i32 %6, i64* %4)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @LDAP_VERSION3, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  ret void
}

declare dso_local i64 @ldap_get_optionW(i32*, i32, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
