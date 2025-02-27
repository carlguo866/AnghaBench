; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_config_parse_tunnel_key.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_config_parse_tunnel_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@AF_INET = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to parse tunnel key ignoring assignment: %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"InputKey\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_tunnel_key(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %union.in_addr_union, align 4
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %26 = load i8*, i8** %21, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %23, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %17, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %19, align 8
  %33 = call i32 @assert(i8* %32)
  %34 = load i8*, i8** %20, align 8
  %35 = call i32 @assert(i8* %34)
  %36 = load i32, i32* @AF_INET, align 4
  %37 = load i8*, i8** %19, align 8
  %38 = call i32 @in_addr_from_string(i32 %36, i8* %37, %union.in_addr_union* %22)
  store i32 %38, i32* %25, align 4
  %39 = load i32, i32* %25, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %10
  %42 = load i8*, i8** %19, align 8
  %43 = call i32 @safe_atou32(i8* %42, i8** %24)
  store i32 %43, i32* %25, align 4
  %44 = load i32, i32* %25, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* @LOG_ERR, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i8*, i8** %19, align 8
  %52 = call i32 @log_syntax(i8* %47, i32 %48, i8* %49, i32 %50, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %51)
  store i32 0, i32* %11, align 4
  br label %81

53:                                               ; preds = %41
  br label %59

54:                                               ; preds = %10
  %55 = bitcast %union.in_addr_union* %22 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @be32toh(i32 %57)
  store i8* %58, i8** %24, align 8
  br label %59

59:                                               ; preds = %54, %53
  %60 = load i8*, i8** %17, align 8
  %61 = call i64 @streq(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %24, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %80

67:                                               ; preds = %59
  %68 = load i8*, i8** %17, align 8
  %69 = call i64 @streq(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8*, i8** %24, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %79

75:                                               ; preds = %67
  %76 = load i8*, i8** %24, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %63
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %46
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @in_addr_from_string(i32, i8*, %union.in_addr_union*) #1

declare dso_local i32 @safe_atou32(i8*, i8**) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i8* @be32toh(i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
