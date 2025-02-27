; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_get_login_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_get_login_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_login = type { i32, i64, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i64, i64 }
%struct.iscsi_login_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ISCSI_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"Got Login Command, Flags 0x%02x, ITT: 0x%08x, CmdSN: 0x%08x, ExpStatSN: 0x%08x, CID: %hu, Length: %u\0A\00", align 1
@MAX_KEY_VALUE_PAIRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_get_login_rx(%struct.iscsi_conn* %0, %struct.iscsi_login* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_login*, align 8
  %6 = alloca %struct.iscsi_login_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_login* %1, %struct.iscsi_login** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %10 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %10, i32 0, i32 11
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %14 = call i64 @iscsi_login_rx_data(%struct.iscsi_conn* %9, i64 %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %139

17:                                               ; preds = %2
  %18 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %18, i32 0, i32 11
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %21, %struct.iscsi_login_req** %6, align 8
  %22 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %23 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntoh24(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 0, %26
  %28 = and i32 %27, 3
  store i32 %28, i32* %7, align 4
  %29 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %30 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %33 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %36 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %39 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %42 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %44)
  %46 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %46, i32 0, i32 12
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %116

50:                                               ; preds = %17
  %51 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %52 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %51, i32 0, i32 11
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %54, %struct.iscsi_login_req** %6, align 8
  %55 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %56 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %63 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %65 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ISCSI_LOGIN_CURRENT_STAGE(i32 %66)
  %68 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %69 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 4
  %70 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %74 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 8
  %75 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %76 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %79 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  %80 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %81 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %84 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i32 %82, i32 %85, i32 6)
  %87 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %88 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @be32_to_cpu(i32 %89)
  %91 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %92 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %91, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  %93 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %94 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %97 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %99 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @be32_to_cpu(i32 %100)
  %102 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %103 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %105 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @be16_to_cpu(i32 %106)
  %108 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %109 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %111 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @be16_to_cpu(i32 %112)
  %114 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %115 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %50, %17
  %117 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %118 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %119 = call i64 @iscsi_target_check_login_request(%struct.iscsi_conn* %117, %struct.iscsi_login* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 -1, i32* %3, align 4
  br label %139

122:                                              ; preds = %116
  %123 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %124 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @MAX_KEY_VALUE_PAIRS, align 4
  %127 = call i32 @memset(i64 %125, i32 0, i32 %126)
  %128 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %129 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %130 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i64 @iscsi_login_rx_data(%struct.iscsi_conn* %128, i64 %131, i32 %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %122
  store i32 -1, i32* %3, align 4
  br label %139

138:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %137, %121, %16
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @iscsi_login_rx_data(%struct.iscsi_conn*, i64, i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ISCSI_LOGIN_CURRENT_STAGE(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i64 @iscsi_target_check_login_request(%struct.iscsi_conn*, %struct.iscsi_login*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
